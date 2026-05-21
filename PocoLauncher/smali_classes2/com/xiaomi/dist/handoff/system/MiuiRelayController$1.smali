.class Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;
.super Ljava/lang/Object;
.source "MiuiRelayController.java"

# interfaces
.implements Lcom/xiaomi/mirror/synergy/RelayIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/system/MiuiRelayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;


# direct methods
.method constructor <init>(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconHide()V
    .locals 3

    const-string v0, "MiuiRelayController"

    const-string v1, "onIconHide"

    .line 149
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$002(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Z)Z

    .line 151
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    new-array v2, v1, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$202(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 155
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    .line 157
    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$200(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    .line 155
    invoke-interface {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method public onIconListUpdate(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "MiuiRelayController"

    const-string v2, "onIconUpdate"

    .line 162
    invoke-static {v1, v2}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$000(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$300(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 166
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "support handoff, ignore miui relay"

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    .line 168
    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    iget-object v6, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$400(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "onIconUpdate error, appMeta empty"

    .line 174
    invoke-static {v1, v0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_2
    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/AppMeta;->isSupportHandoff()Z

    move-result v7

    .line 178
    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff()Z

    move-result v8

    iget-object v9, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    .line 180
    invoke-static {v9}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$300(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    .line 181
    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-static {v8, v7, v9, v10}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->useMiuiRelay(ZZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 182
    invoke-static {v1, v5}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 186
    new-instance v13, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    .line 187
    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getRemoteDeviceType()I

    move-result v8

    invoke-static {v7, v8}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$500(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;I)I

    move-result v7

    .line 188
    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v5, v7, v8}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    new-instance v5, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iget-object v7, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v7}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$600(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)I

    move-result v9

    const/4 v10, 0x0

    .line 191
    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/AppMeta;->getAppId()I

    move-result v11

    .line 192
    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getDescription()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;-><init>(IIILjava/lang/String;Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;ZJ)V

    .line 196
    invoke-virtual {v5, v6}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->setAppMeta(Lcom/xiaomi/dist/handoff/AppMeta;)V

    .line 197
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 199
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->onIconHide()V

    .line 201
    invoke-static {v1, v5}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_5
    iget-object v1, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v1, v3}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$202(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    const/4 v1, 0x0

    move v3, v1

    .line 205
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 206
    iget-object v4, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v4}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$200(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :cond_6
    iget-object v2, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v2

    iget-object v0, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    .line 210
    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$200(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object v0

    .line 208
    invoke-interface {v2, v1, v0}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onIconShow()V
    .locals 2

    const-string v0, "MiuiRelayController"

    const-string v1, "onIconShow"

    .line 142
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$002(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Z)Z

    return-void
.end method

.method public onRelayComplete(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public onRelayError(ILjava/lang/String;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
