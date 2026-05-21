.class public final synthetic Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field public final synthetic f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field public final synthetic f$10:Landroid/graphics/RectF;

.field public final synthetic f$11:Z

.field public final synthetic f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lcom/miui/home/recents/views/TaskView;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p2, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p3, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-boolean p4, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$3:Z

    iput-boolean p5, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$4:Z

    iput p6, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$5:I

    iput-boolean p7, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$6:Z

    iput-object p8, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$7:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p9, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$8:Z

    iput-object p10, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$9:Lcom/miui/home/recents/views/RecentsView;

    iput-object p11, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$10:Landroid/graphics/RectF;

    iput-boolean p12, p0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$11:Z

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    iget-object v1, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v2, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v3, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-boolean v4, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$3:Z

    iget-boolean v5, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$4:Z

    iget v6, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$5:I

    iget-boolean v7, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$6:Z

    iget-object v8, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$7:Lcom/miui/home/recents/views/TaskView;

    iget-boolean v9, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$8:Z

    iget-object v10, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$9:Lcom/miui/home/recents/views/RecentsView;

    iget-object v11, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$10:Landroid/graphics/RectF;

    iget-boolean v12, v0, Lcom/miui/home/recents/TaskViewUtils$$ExternalSyntheticLambda0;->f$11:Z

    invoke-static/range {v1 .. v17}, Lcom/miui/home/recents/TaskViewUtils;->$r8$lambda$95b44p6dC7cSRENgwGRat0byFqY(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method
