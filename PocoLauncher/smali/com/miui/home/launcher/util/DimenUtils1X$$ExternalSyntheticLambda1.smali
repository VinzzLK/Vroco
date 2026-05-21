.class public final synthetic Lcom/miui/home/launcher/util/DimenUtils1X$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/util/DimenUtils1X$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/util/DimenUtils1X$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/DimenUtils1X$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/DimenUtils1X$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/util/DimenUtils1X$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/DimenUtils1X;->$r8$lambda$W7XCGSqbAYpH3ns8-IvTGJgKRj8(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
