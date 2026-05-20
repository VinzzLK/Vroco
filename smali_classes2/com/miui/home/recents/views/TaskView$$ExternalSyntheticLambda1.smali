.class public final synthetic Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;->f$0:I

    iget p0, p0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-static {v0, p0, p1}, Lcom/miui/home/recents/views/TaskView;->$r8$lambda$JUxSzES6Wdm95AVGkqxMPR3S570(IILcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
