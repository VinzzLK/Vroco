.class public final Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;
.super Ljava/lang/Object;
.source "WallpaperElement.kt"

# interfaces
.implements Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WallpaperElement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/WallpaperElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/WallpaperElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WallpaperElement;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "valueMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zoom"

    .line 87
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WallpaperElement;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/WallpaperElement;->access$updateTargetParams(Lcom/miui/home/recents/anim/WallpaperElement;F)V

    :cond_0
    return-void
.end method
