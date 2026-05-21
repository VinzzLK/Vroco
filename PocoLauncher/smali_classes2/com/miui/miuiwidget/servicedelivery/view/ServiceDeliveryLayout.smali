.class public abstract Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
.super Landroid/widget/FrameLayout;
.source "ServiceDeliveryLayout.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver$UserPresentCallBack;
.implements Lcom/miui/miuiwidget/servicedelivery/view/ViewSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceDeliveryLayout"


# instance fields
.field protected appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

.field protected backgroundExecutor:Ljava/util/concurrent/Executor;

.field protected coolExecutor:Ljava/util/concurrent/Executor;

.field protected deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

.field protected emptyDataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

.field protected final exposureTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

.field protected final feedbackMenuShowTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

.field private initialized:Z

.field private isContainerLayoutCompleted:Z

.field protected lastNewDataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

.field protected layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

.field protected layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

.field protected layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

.field protected mContext:Landroid/content/Context;

.field private serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

.field protected setViewBlur:Z

.field protected tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

.field protected uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

.field private userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

.field protected visible:Z

.field protected widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;


# direct methods
.method public static synthetic $r8$lambda$fR_R-5uJmesJI-9V5Zf6IN7FLyk(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$m81KuLNAguZCLID2ytRP74ozaII(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->lambda$onDataSetFetched$1(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2SKwUxZq9DFVOLzPIjk_81XGdI(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->lambda$onMeasure$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initialized:Z

    .line 48
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->visible:Z

    .line 63
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {v1}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->emptyDataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    .line 77
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->isContainerLayoutCompleted:Z

    .line 297
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$2;

    invoke-direct {v1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$2;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->exposureTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    .line 304
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;

    invoke-direct {v1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->feedbackMenuShowTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    .line 83
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 85
    iput-boolean p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setViewBlur:Z

    .line 86
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initBackgroundColor()V

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ServiceDeliveryLayout: setViewBlur "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceDeliveryLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->isContainerLayoutCompleted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->isContainerLayoutCompleted:Z

    return p1
.end method

.method public static create(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;Lcom/miui/miuiwidget/track/MiuiWidgetTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;ZZ)Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
    .locals 12

    move-object v0, p0

    move/from16 v1, p9

    .line 354
    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->spanX()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 355
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;

    invoke-direct {v2, p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->isCompatibleNewLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->isSupportNewLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;

    invoke-direct {v2, p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 360
    :cond_1
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;

    invoke-direct {v2, p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;-><init>(Landroid/content/Context;Z)V

    :goto_0
    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 364
    invoke-virtual/range {v3 .. v11}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->init(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;Lcom/miui/miuiwidget/track/MiuiWidgetTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;Z)V

    return-object v2
.end method

.method private synthetic lambda$init$0()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->update()V

    return-void
.end method

.method private synthetic lambda$onDataSetFetched$1(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetchedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method

.method private synthetic lambda$onMeasure$2()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->emptyDataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->lastNewDataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Z)V

    return-void
.end method

.method private onDataSetFetchedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 6

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetFetchedInternal old time stamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-wide v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " is null "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new time stamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 142
    iget-wide v1, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "is null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryLayout"

    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 143
    iget-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldDataSet widget size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newDataSet widget size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "old widgetList == null or new widgetList == null"

    .line 148
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 150
    iget-wide v2, p1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    iget-wide v4, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataSetFetchedInternal: updateWhenDataSetNotChange "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetNotChange(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    .line 157
    invoke-virtual {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getLayoutStyle(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    move-result-object v2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v4}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "onDataSetFetchedInternal: newLayoutStyle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " latestLayoutStyle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_4

    .line 162
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    invoke-virtual {v1, v2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 163
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    goto :goto_3

    .line 165
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    :goto_3
    return-void
.end method

.method private registerUserPresentReceiver(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ServiceDeliveryLayout"

    const-string v1, "registerUserPresentReceiver: "

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_0
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    invoke-direct {v2}, Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;-><init>()V

    iput-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    .line 420
    invoke-virtual {v2, p0}, Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;->setUserPresentCallBack(Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver$UserPresentCallBack;)V

    .line 421
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 422
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    .line 424
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    const/4 v3, 0x2

    invoke-virtual {p1, p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 430
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Z)V
    .locals 1

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateWhenDataSetChanged: is use cache = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " deliveryContainer is not null = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceDeliveryLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_1

    .line 244
    iget-object p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    invoke-virtual {p0, p1, p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->onDataSetChanged(Ljava/util/List;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearBackgroundColor()V
    .locals 1

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected abstract defaultDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->disableFeedbackMenu()V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public downloadSucceed(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;",
            ">;)V"
        }
    .end annotation

    .line 397
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->downloadSucceed(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected getAppItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-nez p0, :cond_0

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->getAppItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeliveryContainer()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    return-object p0
.end method

.method public getLayoutHost()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    return-object p0
.end method

.method public getLayoutStyle()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    return-object p0
.end method

.method protected getLayoutStyle(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;
    .locals 0

    if-nez p1, :cond_0

    .line 265
    sget-object p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    return-object p0

    .line 267
    :cond_0
    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 268
    sget-object p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    :goto_0
    return-object p0
.end method

.method public getPendingSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getPendingSet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 406
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    return-object p0
.end method

.method public init(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;Lcom/miui/miuiwidget/track/MiuiWidgetTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;Z)V
    .locals 7

    .line 104
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initialized:Z

    .line 106
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->exposureTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    invoke-interface {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->setExposureTracker(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;)V

    .line 107
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->feedbackMenuShowTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    invoke-interface {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->setFeedbackMenuShowTracker(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;)V

    .line 108
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;-><init>(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/track/MiuiWidgetTracker;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    .line 109
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 110
    iput-object p5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 111
    iput-object p6, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->coolExecutor:Ljava/util/concurrent/Executor;

    .line 112
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    invoke-direct {p1, p0, p3, p5}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    .line 113
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    .line 114
    iput-object p7, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    .line 115
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {p1}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->defaultDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetched(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    if-nez p8, :cond_1

    .line 118
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->registerUserPresentReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public initBackgroundColor()V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setViewBlur:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->clearBackgroundColor()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setBackgroundColor()V

    :goto_0
    return-void
.end method

.method protected initializeDeliveryContainer()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initializeDeliveryContainer(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initializeDeliveryContainer(Ljava/lang/Runnable;)V
    .locals 12

    const-string v0, "ServiceDeliveryLayout"

    const-string v1, "initializeDeliveryContainer"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainerFactory;

    invoke-direct {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainerFactory;-><init>()V

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    iget-object v6, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v7, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->coolExecutor:Ljava/util/concurrent/Executor;

    .line 185
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    move-object v10, p1

    .line 184
    invoke-virtual/range {v2 .. v11}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainerFactory;->create(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;Ljava/lang/Runnable;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;)Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 189
    instance-of v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getPadding()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    :cond_1
    iput-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->isContainerLayoutCompleted:Z

    .line 196
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 212
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    return-void
.end method

.method public isFeedBackEnabledForCurrentCard()Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->isFeedbackEnabledForCurrentCard()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected needBlur()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 460
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 461
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    if-eqz p0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->onAdd()V

    :cond_0
    return-void
.end method

.method public onBlurSupportChanged(Z)V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBlurSupportChanged: setViewBlur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iput-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setViewBlur:Z

    .line 494
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initBackgroundColor()V

    .line 495
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setViewBlur:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->needBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->setOrClearBlur(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iget-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setViewBlur:Z

    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setBackgroundColor()V

    :cond_0
    return-void
.end method

.method public final onDataSetFetched(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 2

    .line 131
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->lastNewDataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetFetched: isAttachedToWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetchedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeAllWidgets()V

    .line 392
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->clearPendingSet()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 468
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 469
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->onRemove()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    if-eqz v0, :cond_1

    .line 474
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    :cond_1
    return-void
.end method

.method public onInvisible()V
    .locals 2

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->visible:Z

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->onInvisible()V

    :cond_0
    return-void
.end method

.method protected abstract onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 370
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 371
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    iget p1, p1, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    iget p1, p1, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    .line 375
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ServiceDeliveryLayout:onMeasure: width or height changed uiAdapter.totalWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    iget p2, p2, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uiAdapter.totalHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    iget p2, p2, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceDeliveryLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateViewSize()V

    .line 382
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onViewSizeChange()V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->onViewSizeChange()V

    :cond_0
    return-void
.end method

.method public onVisible()V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->visible:Z

    .line 275
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->update()V

    return-void
.end method

.method public removeWidgets(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeWidgets(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/miuiwidget/R$color;->delivery_layout_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setDrawSnapShot(Z)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setDrawSnapShot(Z)V

    :cond_0
    return-void
.end method

.method protected startDeliveryLayoutAppearAnimation()V
    .locals 3

    const-string v0, "ServiceDeliveryLayout"

    const-string v1, "startDeliveryLayoutAppearAnimation"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-nez v1, :cond_0

    const-string p0, "startDeliveryLayoutAppearAnimation: deliveryContainer == null"

    .line 218
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 222
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCarousel()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getIndicator()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x0

    .line 221
    invoke-static {v0, v1, p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDeliveryLayoutAppearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected updateViewSize()V
    .locals 0

    return-void
.end method

.method protected updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Z)V

    return-void
.end method

.method protected updateWhenDataSetNotChange(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 1

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ServiceDeliveryLayout:updateWhenDataSetNotChange: cardInfo = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceDeliveryLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->onVisible()V

    :cond_0
    return-void
.end method

.method public userUnlocked()V
    .locals 3

    const-string v0, "ServiceDeliveryLayout"

    const-string v1, "ServiceDeliveryLayout:userUnlocked: "

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->update()V

    .line 440
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->userUnlocked()V

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDelete: userPresentReceiver != null = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->userPresentReceiver:Lcom/miui/miuiwidget/servicedelivery/UserPresentReceiver;

    :cond_2
    return-void
.end method
