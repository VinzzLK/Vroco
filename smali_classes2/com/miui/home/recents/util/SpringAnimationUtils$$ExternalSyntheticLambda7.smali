.class public final synthetic Lcom/miui/home/recents/util/SpringAnimationUtils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

.field public final synthetic f$1:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iput-object p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$$ExternalSyntheticLambda7;->f$1:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iget-object p0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$$ExternalSyntheticLambda7;->f$1:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-static {v0, p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->$r8$lambda$lbTS2qD7loMOzjH9fdqGSJxMTaE(Lcom/miui/home/recents/util/SpringAnimationUtils;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
