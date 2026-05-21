.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$802(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;I)I

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EditStateChangedMessageHandler, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.MultiSelectMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    const/16 v0, 0x13

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 305
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 306
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 307
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    const/16 v3, 0xb

    if-eq p1, v3, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 308
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    const/16 v3, 0xc

    if-ne p1, v3, :cond_1

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;ZZ)V

    .line 310
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 314
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$900(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    .line 318
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 319
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1000(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1100(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    :cond_5
    :goto_0
    return-void
.end method
