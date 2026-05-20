.class Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWaitToDragState"
.end annotation


# instance fields
.field private hasBeenTimeout:Z

.field private mMsgUpType:I

.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, -0x1

    .line 359
    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    const/4 p1, 0x0

    .line 360
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "AppWaitToDragState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 365
    iput v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    .line 371
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xc

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppWaitToDragState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMsgUpType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 378
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 380
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    goto/16 :goto_0

    .line 383
    :pswitch_2
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    .line 384
    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-eq p1, v1, :cond_2

    .line 385
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto/16 :goto_0

    .line 392
    :pswitch_3
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-eq p1, v1, :cond_0

    .line 393
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/miui/home/recents/GestureStateMachine;->access$2800(Lcom/miui/home/recents/GestureStateMachine;I)V

    .line 396
    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_1

    .line 415
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 409
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 410
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$2900(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStateMachine;->transitionStateTo(Lcom/android/internal/util/IState;)V

    .line 411
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 412
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 402
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 403
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 398
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStateMachine;->access$2900(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->transitionStateTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 427
    :pswitch_6
    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    .line 428
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    if-eqz p1, :cond_2

    .line 429
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 389
    :pswitch_7
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->onAppMoveWithoutRecentLeash()V

    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
