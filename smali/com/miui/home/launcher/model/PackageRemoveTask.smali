.class public Lcom/miui/home/launcher/model/PackageRemoveTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "PackageRemoveTask.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mPackageName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 3

    .line 24
    iget-object p2, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mUser:Landroid/os/UserHandle;

    if-nez p2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mPackageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2, p0}, Lcom/miui/home/launcher/LauncherModel;->onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 25
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "package removal not executed, because package name empty "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or user empty "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/model/PackageRemoveTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageRemoveTask"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
