.class public final synthetic Lcom/miui/maml/LanguageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/maml/data/Variables;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/LanguageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/maml/data/Variables;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/LanguageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/maml/data/Variables;

    check-cast p1, Lcom/miui/maml/LanguageHelper$Plurals;

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p0, p1, p2}, Lcom/miui/maml/LanguageHelper;->$r8$lambda$5ek-LC9SQd2JZerj51s8SkFGwfI(Lcom/miui/maml/data/Variables;Lcom/miui/maml/LanguageHelper$Plurals;Ljava/util/HashMap;)V

    return-void
.end method
