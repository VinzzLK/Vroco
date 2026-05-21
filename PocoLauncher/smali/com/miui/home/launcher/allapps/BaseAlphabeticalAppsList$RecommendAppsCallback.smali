.class public interface abstract Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecommendAppsCallback"
.end annotation


# virtual methods
.method public abstract onAppsUpdate(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method
