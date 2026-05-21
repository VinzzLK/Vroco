.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;
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

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mirror/util/VersionUtil;->mirrorSupportOS2Version(Landroid/content/Context;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: supportOS2Feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mirror_:RelayIconHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$900(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$800()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$1000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v3}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v5, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v5}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v6}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v4, v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v0, v4

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    const-string p0, "data not change"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$600()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->access$400(Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string p1, "notify update"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconListUpdate(Ljava/util/List;)V

    :cond_b
    return-void
.end method
