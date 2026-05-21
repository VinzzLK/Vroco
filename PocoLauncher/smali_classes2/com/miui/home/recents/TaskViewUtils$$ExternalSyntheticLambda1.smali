.class public final synthetic Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/miui/home/recents/views/RecentsView;

.field public final synthetic f$5:Landroid/graphics/RectF;

.field public final synthetic f$6:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;FZILcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput p2, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$1:F

    iput-boolean p3, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$2:Z

    iput p4, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$4:Lcom/miui/home/recents/views/RecentsView;

    iput-object p6, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/RectF;

    iput-object p7, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$6:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget v1, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$1:F

    iget-boolean v2, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$2:Z

    iget v3, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$4:Lcom/miui/home/recents/views/RecentsView;

    iget-object v5, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda1;->f$6:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/TaskViewUtils;->$r8$lambda$5opjcixVFawVZQ2oBiuiD5DHKdY(Lcom/miui/home/recents/views/TaskView;FZILcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
