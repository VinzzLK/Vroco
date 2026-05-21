.class public final synthetic Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isInHideApps(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result p0

    return p0
.end method
