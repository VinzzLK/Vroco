.class Lcom/miui/home/launcher/Launcher$44;
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

    .line 5012
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 5015
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5018
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    .line 5020
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3600(Lcom/miui/home/launcher/Launcher;)V

    .line 5021
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5022
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    .line 5024
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 5025
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 5026
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$3800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSize()V

    return-void
.end method
