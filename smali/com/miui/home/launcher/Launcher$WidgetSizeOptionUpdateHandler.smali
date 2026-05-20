.class Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSizeOptionUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$eRuUwonT8mcR5GvG81uilB-LTUM(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->lambda$updateWidgetsSizeOption$0([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 11509
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 11509
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private synthetic lambda$updateWidgetsSizeOption$0([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 11529
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private updateWidgetsSizeOption()V
    .locals 5

    .line 11526
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10900(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11527
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$11000(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 11528
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$11000(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11529
    new-instance v2, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11531
    aget-object v3, v1, v2

    .line 11532
    iget-object v4, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 11533
    iget-object v3, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11537
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$11100(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 11538
    iget-object v1, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 11539
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->requestUpdate(Z)V

    goto :goto_1

    .line 11543
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$11200(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v0, :cond_4

    .line 11545
    iget-object v0, v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->updateWidgetSizeRanges()V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 11517
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SearchBarChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 11512
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SoscChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 11522
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method
