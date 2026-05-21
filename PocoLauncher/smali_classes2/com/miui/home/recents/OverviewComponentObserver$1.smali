.class Lcom/miui/home/recents/OverviewComponentObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "OverviewComponentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OverviewComponentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/OverviewComponentObserver;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/OverviewComponentObserver;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/home/recents/OverviewComponentObserver$1;->this$0:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/recents/OverviewComponentObserver$1;->this$0:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargetsPost()V

    return-void
.end method
