.class public Lcom/miui/home/launcher/RemovedDrawerComponentInfoList;
.super Lcom/miui/home/launcher/RemovedComponentInfoList;
.source "RemovedDrawerComponentInfoList.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/RemovedComponentInfoList;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getReaderFileName()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getRemovedDrawerComponentInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
