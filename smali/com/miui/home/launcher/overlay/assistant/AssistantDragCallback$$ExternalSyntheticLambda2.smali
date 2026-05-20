.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field public final synthetic f$1:Lcom/miui/home/launcher/DragObject;

.field public final synthetic f$2:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/DragObject;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;->f$2:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/DragObject;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;->f$2:Landroid/view/MotionEvent;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->$r8$lambda$w6nYpiyCjo75RVoBFN7oUbbZC5M(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;Ljava/lang/Boolean;)V

    return-void
.end method
