.class public final synthetic Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/common/messages/LongClickMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/messages/LongClickMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/common/messages/LongClickMessage;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/common/messages/LongClickMessage;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->$r8$lambda$7bzf6Q1xXmHZgPJ74KhpsuwbC5A(Lcom/miui/home/launcher/common/messages/LongClickMessage;Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
