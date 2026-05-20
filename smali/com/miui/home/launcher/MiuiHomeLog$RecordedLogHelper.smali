.class Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;
.super Ljava/lang/Object;
.source "MiuiHomeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/MiuiHomeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordedLogHelper"
.end annotation


# instance fields
.field private mCurrentSavedLogNum:I

.field mDate:Ljava/util/Date;

.field mDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

.field private mHead:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mTag:Ljava/lang/String;

    const-string p1, "mm:ss.SSS"

    .line 92
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 4

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    iget v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->printAll()V

    .line 110
    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    .line 111
    iget-object v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getDateToString(J)Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    iget-object p0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public printAll()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    iput v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    return-void
.end method

.method public setHead(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
