.class public final synthetic Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda49;->f$0:Lcom/miui/home/recents/NavStubView;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda49;->f$0:Lcom/miui/home/recents/NavStubView;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->$r8$lambda$TUlEV4RhCp-oDi5E59KAexwJhrc(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
