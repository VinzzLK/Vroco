.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HideAppsTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideAppsSimpleOnGestureListener"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 257
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 261
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    if-gez p1, :cond_0

    return p2

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    cmpg-float p1, p3, p4

    if-gez p1, :cond_1

    .line 266
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->hideHideView(Z)V

    return v0

    :cond_1
    return p2

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    if-eqz p1, :cond_5

    cmpl-float p3, p3, p4

    if-lez p3, :cond_5

    .line 274
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isFirstEnterHiddenInOldMachine :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFirstEnterHiddenInOldMachine()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "isPocoHideAppTransfer :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;

    .line 277
    invoke-virtual {p4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->isPocoHideAppTransfer()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "HideAppsTransitionContr"

    .line 274
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isFirstEnterHiddenInOldMachine()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->isPocoHideAppTransfer()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 279
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->showHideAppsTransferReminderDialog()V

    .line 280
    invoke-virtual {p4, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->setPocoHideAppTransfer(Z)V

    .line 281
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFirstEnterHiddenInOldMachine(Z)V

    goto :goto_0

    .line 282
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 283
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->showHideView(Z)V

    goto :goto_0

    .line 286
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_0
    return p1
.end method
