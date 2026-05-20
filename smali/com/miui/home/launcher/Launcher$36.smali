.class Lcom/miui/home/launcher/Launcher$36;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4869
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 4872
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4875
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->isSystemAnimationOpen(Landroid/content/Context;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$4202(Lcom/miui/home/launcher/Launcher;Z)Z

    return-void
.end method
