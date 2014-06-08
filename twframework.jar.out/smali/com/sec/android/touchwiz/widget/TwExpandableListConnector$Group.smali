.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Group"
.end annotation


# static fields
.field private static final DEBUG_GROUP:Z = false

.field private static final ROT_DURATION:F = 300.0f


# instance fields
.field animatingChildren:I

.field animationOffsetForChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field animationStartOffsetForGroup:F

.field dividerHeight:I

.field groupEndTranslationPosition:I

.field groupId:I

.field groupStartTranslationPosition:I

.field hasLastAnimatingItem:Z

.field isExpandingOrCollapsing:Z

.field isTranslating:Z

.field isVisible:Z

.field lastAnimatingItem:I

.field lastAnimationCompletionTime:F

.field listHeight:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field totalChildren:I

.field translationSpeed:F

.field viewHeight:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;IZ)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2420
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 2317
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 2323
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 2329
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->totalChildren:I

    .line 2336
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    .line 2342
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    .line 2347
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    .line 2353
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 2359
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    .line 2364
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    .line 2369
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationStartOffsetForGroup:F

    .line 2374
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    .line 2379
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    .line 2384
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    .line 2392
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    .line 2413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    .line 2421
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 2422
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    .line 2423
    return-void
.end method


# virtual methods
.method computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V
    .locals 11
    .parameter "nextGroup"
    .parameter "chidheight"

    .prologue
    const/high16 v10, 0x4396

    .line 2470
    const/4 v4, 0x0

    .line 2472
    .local v4, nextGroupSpeed:F
    if-eqz p1, :cond_1

    .line 2473
    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    .line 2477
    :goto_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    sub-float v6, v4, v8

    .line 2478
    .local v6, relSpeed:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    .line 2479
    const/4 v8, -0x1

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    .line 2481
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-nez v8, :cond_2

    .line 2527
    :cond_0
    return-void

    .line 2475
    .end local v6           #relSpeed:F
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    mul-float v4, v8, v9

    goto :goto_0

    .line 2489
    .restart local v6       #relSpeed:F
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 2490
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2495
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v8

    mul-float/2addr v8, v6

    float-to-int v1, v8

    .line 2496
    .local v1, distTravelledAtRelSpeed:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-ge v3, v8, :cond_0

    .line 2497
    const/4 v2, 0x0

    .line 2499
    .local v2, distanceOffset:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v8, :cond_5

    .line 2501
    mul-int v8, v3, p2

    div-int/lit8 v9, p2, 0x2

    add-int v2, v8, v9

    .line 2511
    :goto_3
    const/4 v5, 0x0

    .line 2512
    .local v5, offset:I
    if-lt v1, v2, :cond_7

    .line 2513
    int-to-float v8, v2

    div-float/2addr v8, v6

    float-to-int v5, v8

    .line 2519
    :goto_4
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2522
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v10

    cmpg-float v8, v9, v8

    if-gez v8, :cond_3

    .line 2523
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v10

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    .line 2524
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    .line 2496
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2492
    .end local v1           #distTravelledAtRelSpeed:I
    .end local v2           #distanceOffset:I
    .end local v3           #i:I
    .end local v5           #offset:I
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    goto :goto_1

    .line 2504
    .restart local v1       #distTravelledAtRelSpeed:I
    .restart local v2       #distanceOffset:I
    .restart local v3       #i:I
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v8, v8, -0x2

    sub-int/2addr v8, v3

    if-ltz v8, :cond_6

    .line 2505
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v8, v8, -0x2

    sub-int/2addr v8, v3

    mul-int/2addr v8, p2

    div-int/lit8 v9, p2, 0x2

    add-int v2, v8, v9

    goto :goto_3

    .line 2508
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 2515
    .restart local v5       #offset:I
    :cond_7
    sub-int v0, v2, v1

    .line 2516
    .local v0, distTravelledAtNextGroupSpeed:I
    int-to-float v8, v0

    div-float v7, v8, v4

    .line 2517
    .local v7, timeSpentAtNextGroupSpeed:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v8

    add-float/2addr v8, v7

    float-to-int v5, v8

    goto :goto_4
.end method

.method configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V
    .locals 2
    .parameter "prevGroup"

    .prologue
    .line 2442
    if-nez p1, :cond_0

    .line 2443
    sget v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    .line 2456
    :goto_0
    return-void

    .line 2446
    :cond_0
    iget-boolean v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-eqz v0, :cond_1

    .line 2451
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    sget v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    goto :goto_0

    .line 2453
    :cond_1
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    goto :goto_0
.end method

.method dump()V
    .locals 0

    .prologue
    .line 2653
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2427
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2434
    return-void

    .line 2432
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getRotationDuration()F
    .locals 1

    .prologue
    .line 2550
    const/high16 v0, 0x4396

    return v0
.end method

.method getRotationOffsetForChild(I)F
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2539
    const/4 v0, 0x0

    .line 2541
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method getTranslationDuration()F
    .locals 4

    .prologue
    .line 2607
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 2608
    sget v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    .line 2611
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2612
    .local v0, distance:I
    int-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    div-float v1, v2, v3

    .line 2613
    .local v1, duration:F
    return v1
.end method

.method getTranslationDurationForChild(I)F
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 2626
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-nez v0, :cond_0

    .line 2627
    const/4 v0, 0x0

    .line 2628
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v0

    goto :goto_0
.end method

.method getTranslationEndPositionForChild(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 2593
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-nez v0, :cond_0

    .line 2594
    const/4 v0, 0x0

    .line 2595
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_0
.end method

.method getTranslationOffsetForChild(I)F
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 2563
    const/4 v0, 0x0

    return v0
.end method

.method getTranslationStartPositionForChild(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 2577
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-nez v0, :cond_0

    .line 2578
    const/4 v0, 0x0

    .line 2579
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    goto :goto_0
.end method