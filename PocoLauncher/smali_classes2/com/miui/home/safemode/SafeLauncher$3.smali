.class Lcom/miui/home/safemode/SafeLauncher$3;
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

    .line 265
    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$3;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher$3;->this$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
