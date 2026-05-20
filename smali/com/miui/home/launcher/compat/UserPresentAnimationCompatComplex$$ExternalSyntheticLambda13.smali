.class public final synthetic Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda13;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda13;->f$0:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->$r8$lambda$y4r37vS5-2ZzD-igM6Sgo4dCIk8(JLjava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
