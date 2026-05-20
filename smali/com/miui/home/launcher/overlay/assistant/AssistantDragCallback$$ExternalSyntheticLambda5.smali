.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;->f$1:Landroid/view/MotionEvent;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->$r8$lambda$79kXsQA0ru0PtN3N4jnG2oqwo9k(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
