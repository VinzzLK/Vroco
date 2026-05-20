.class Lmiuix/autodensity/AutoDensityConfig$3$1;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig$3;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/autodensity/AutoDensityConfig$3;

.field final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmiuix/autodensity/AutoDensityConfig$3;Ljava/lang/Object;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 8

    .line 337
    :try_start_0
    const-class v0, Landroid/view/ViewRootImpl$ActivityConfigCallback;

    iget-object v1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->val$callback:Ljava/lang/Object;

    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/Configuration;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    .line 343
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    .line 337
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p1, p1, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->access$000(Landroid/app/Application;)Z

    move-result p1

    .line 346
    iget-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p2, p2, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    instance-of v0, p2, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_0

    .line 347
    check-cast p2, Lmiuix/autodensity/IDensity;

    invoke-interface {p2}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    .line 350
    iget-object p0, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p0, p0, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public requestCompatCameraControl(ZZLandroid/app/ICompatCameraControlCallback;)V
    .locals 0

    return-void
.end method
