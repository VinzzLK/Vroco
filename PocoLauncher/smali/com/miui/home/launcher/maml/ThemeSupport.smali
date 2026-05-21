.class public interface abstract Lcom/miui/home/launcher/maml/ThemeSupport;
.super Ljava/lang/Object;
.source "ThemeSupport.java"


# virtual methods
.method public abstract apply(Lcom/miui/home/launcher/maml/Theme;Ljava/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/maml/Theme;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;
.end method

.method public abstract getTheme()Lcom/miui/home/launcher/maml/Theme;
.end method
