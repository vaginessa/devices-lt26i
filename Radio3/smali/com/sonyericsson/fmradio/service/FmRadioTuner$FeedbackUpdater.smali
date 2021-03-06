.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedbackUpdater"
.end annotation


# instance fields
.field private mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mOldFrequency:I

.field private mOldText:Ljava/lang/String;

.field private mProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

.field private mTuner:Lcom/sonyericsson/fmradio/service/Tuner;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 2
    .parameter "provider"
    .parameter "tuner"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 259
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 260
    new-instance v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->getFmBand()Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;-><init>(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 261
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "o"
    .parameter "obj"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v0

    .line 266
    .local v0, newFrequency:I
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/fmradio/service/Tuner;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, newText:Ljava/lang/String;
    iget v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mOldFrequency:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mOldText:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/fmradio/service/Tuner;->isFavorite(I)Z

    move-result v4

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->showBackgroundInfo(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;Z)V

    .line 271
    :cond_1
    iput v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mOldFrequency:I

    .line 272
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->mOldText:Ljava/lang/String;

    .line 273
    return-void
.end method
