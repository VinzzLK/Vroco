.class public final Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;
.super Ljava/lang/Object;
.source "ShortcutMenuLayerElement.kt"

# interfaces
.implements Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;->this$0:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/util/ArrayMap;)V
    .locals 3
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

    .line 154
    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;->this$0:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    const-string v0, "Alpha"

    .line 155
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const-string v1, "scaleX"

    .line 156
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const-string v2, "scaleY"

    .line 157
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 154
    invoke-static {p0, v0, v1, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->access$updateTargetParams(Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
