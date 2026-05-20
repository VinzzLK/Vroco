.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainerFactory;
.super Ljava/lang/Object;
.source "ServiceDeliveryContainerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;Ljava/lang/Runnable;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;)Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;
    .locals 10

    .line 29
    new-instance v9, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    move-object v0, p1

    invoke-direct {v9, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x13

    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 33
    invoke-virtual/range {v0 .. v8}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->init(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;Ljava/lang/Runnable;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;)V

    return-object v9
.end method
