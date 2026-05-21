.class public final synthetic Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager;

.field public final synthetic f$1:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;->$r8$lambda$2wltRgN1snCdCnnboNFqJmnFCaI(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method
