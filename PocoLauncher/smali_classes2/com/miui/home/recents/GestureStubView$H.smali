.class Lcom/miui/home/recents/GestureStubView$H;
.super Landroid/os/Handler;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V
    .locals 0

    .line 1137
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1140
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x102

    if-eq p1, v0, :cond_9

    const/16 v0, 0x103

    if-eq p1, v0, :cond_8

    const/16 v0, 0x105

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1154
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1155
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->isDisableQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1156
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    sget-object p1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_1

    .line 1159
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2900(Lcom/miui/home/recents/GestureStubView;)V

    .line 1160
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    const v1, 0x3ea8f5c3    # 0.33f

    const/16 v2, 0x14

    if-nez p1, :cond_4

    .line 1161
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/GestureStubView;->access$1200(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1162
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$800(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$1100(Lcom/miui/home/recents/GestureStubView;)F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$3000(Lcom/miui/home/recents/GestureStubView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    .line 1163
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1165
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1169
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/GestureStubView;->access$1200(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1170
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureBackArrowView;->getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq p1, v1, :cond_7

    .line 1171
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1173
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$800(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$1100(Lcom/miui/home/recents/GestureStubView;)F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$3000(Lcom/miui/home/recents/GestureStubView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 1174
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1176
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    .line 1179
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p0

    const-wide/16 v1, 0x11

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1151
    :cond_8
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$2800(Lcom/miui/home/recents/GestureStubView;)V

    goto :goto_1

    .line 1143
    :cond_9
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureBackArrowView;->reset()V

    .line 1145
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    const-string v0, "MSG_RESET_ANIMATING_STATUS"

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$2700(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V

    .line 1148
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "reset animating status"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
