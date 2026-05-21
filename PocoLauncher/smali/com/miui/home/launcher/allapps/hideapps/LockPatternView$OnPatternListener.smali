.class public interface abstract Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPatternListener"
.end annotation


# virtual methods
.method public abstract onPatternCellAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPatternCleared()V
.end method

.method public abstract onPatternDetected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPatternStart()V
.end method
