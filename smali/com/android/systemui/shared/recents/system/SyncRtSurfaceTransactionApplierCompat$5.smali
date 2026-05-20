.class Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->strokeSwitch(Landroid/view/View;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

.field final synthetic val$params:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$viewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$viewRootImpl:Landroid/view/ViewRootImpl;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$params:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$viewRootImpl:Landroid/view/ViewRootImpl;

    const-string v1, "SyncRtSurfaceTransactionApplierCompat"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "strokeSwitch: mergeWithNextTransaction"

    .line 334
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$viewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$viewRootImpl:Landroid/view/ViewRootImpl;

    const-class v4, Ljava/lang/Void;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v3, v5, v7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$t:Landroid/view/SurfaceControl$Transaction;

    aput-object v3, v0, v6

    .line 336
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v7

    const-string v3, "mergeWithNextTransaction"

    move-object v6, v0

    .line 335
    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "strokeSwitch: apply"

    .line 338
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 341
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;->val$params:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->listener:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;->finish()V

    return-void
.end method
