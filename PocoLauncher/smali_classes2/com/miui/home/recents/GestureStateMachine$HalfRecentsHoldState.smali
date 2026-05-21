.class Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfRecentsHoldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 974
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "HalfRecentsHoldState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 977
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->enterRecentsHoldState(Z)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "HalfRecentsHoldState exit"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 983
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->exitRecentsHoldState(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HalfRecentsHoldState msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 989
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 999
    :pswitch_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performRecentsToHome()V

    goto :goto_0

    .line 1006
    :pswitch_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performRecentsRest(Z)V

    goto :goto_0

    .line 991
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isToRecentsDrag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 992
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStateMachine;->access$2300(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->transitionStateTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
