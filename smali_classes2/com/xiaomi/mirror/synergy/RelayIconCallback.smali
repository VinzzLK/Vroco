.class public interface abstract Lcom/xiaomi/mirror/synergy/RelayIconCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onIconHide()V
.end method

.method public abstract onIconListUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onIconShow()V
.end method

.method public abstract onRelayComplete(I)V
.end method

.method public abstract onRelayError(ILjava/lang/String;)V
.end method
