.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field public final synthetic f$1:Lcom/miui/home/launcher/DragView;

.field public final synthetic f$2:Landroid/view/MotionEvent;

.field public final synthetic f$3:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/launcher/DragView;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$2:Landroid/view/MotionEvent;

    iput-object p4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$3:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/launcher/DragView;

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$2:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;->f$3:Lcom/miui/home/launcher/DragObject;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->$r8$lambda$G-I6gMg8fRQ690CUempUPrE_684(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;Landroid/graphics/Bitmap;)V

    return-void
.end method
