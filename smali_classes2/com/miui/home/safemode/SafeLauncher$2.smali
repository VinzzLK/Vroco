.class Lcom/miui/home/safemode/SafeLauncher$2;
.super Landroid/content/pm/LauncherApps$Callback;
.source "SafeLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/safemode/SafeLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/safemode/SafeLauncher;


# direct methods
.method constructor <init>(Lcom/miui/home/safemode/SafeLauncher;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$2;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$2;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher$2;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-static {p0}, Lcom/miui/home/safemode/SafeLauncher;->access$000(Lcom/miui/home/safemode/SafeLauncher;)Lcom/miui/home/safemode/SafeAppListAdapter;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/miui/home/safemode/SafeModeUtil;->loadAllAppsByProvider(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter;Z)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$2;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher$2;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-static {p0}, Lcom/miui/home/safemode/SafeLauncher;->access$000(Lcom/miui/home/safemode/SafeLauncher;)Lcom/miui/home/safemode/SafeAppListAdapter;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/miui/home/safemode/SafeModeUtil;->loadAllAppsByProvider(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter;Z)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method
