.class public final synthetic Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda0;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda0;->f$0:F

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/TaskView;->$r8$lambda$S16NUVWPhWh3kFa7PnWLvkUN8uY(FLcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
