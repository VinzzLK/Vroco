.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;->registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$200()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInt(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result p1

    const-string v0, "Mirror_:RelayIconHelper"

    if-eqz p1, :cond_2

    const-string p1, "onIconShow"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-interface {p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconShow()V

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$600()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->access$400(Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "notify update on show"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconListUpdate(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "onIconHide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-interface {p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconHide()V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$700(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;)V

    return-void
.end method
