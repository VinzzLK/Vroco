.class Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPackageInstaller"
.end annotation


# instance fields
.field private mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatVLWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/install/PackageInstallerCompatVL;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/pm/PackageInstaller;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoringAppsWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInstaller;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompatVL;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mInstallerWeakReference:Ljava/lang/ref/WeakReference;

    .line 124
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;

    .line 125
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mCompatVLWeakReference:Ljava/lang/ref/WeakReference;

    .line 126
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mRestoringAppsWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private checkAndAddToRestoring(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mRestoringAppsWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 181
    invoke-static {p2}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->isAppInstalled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mRestoringAppsWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static isAppInstalled(Ljava/lang/String;)Z
    .locals 3

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 196
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/high16 v2, 0xc0000

    .line 193
    invoke-virtual {v0, p0, v2, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mCompatVLWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mCompatVLWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$000(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mInstallerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mInstallerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v1

    .line 162
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->checkAndAddToRestoring(ILjava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->mActiveSessionsWeakReference:Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const v2, 0x7f1004c2

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$InternalPackageInstaller;->update(I)V

    return-void
.end method
