.class Lcom/miui/home/safemode/SafeLauncher$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 239
    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$1;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 242
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$1;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher$1;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-static {p0}, Lcom/miui/home/safemode/SafeLauncher;->access$000(Lcom/miui/home/safemode/SafeLauncher;)Lcom/miui/home/safemode/SafeAppListAdapter;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/miui/home/safemode/SafeModeUtil;->loadAllAppsByProvider(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter;Z)V

    return-void
.end method
