.class final Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
.super Landroid/database/CursorWrapper;
.source "FmRadioDbOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CursorHelper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method getFrequency()I
    .locals 1

    .prologue
    .line 125
    const-string v0, "frequency"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getInt(I)I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
