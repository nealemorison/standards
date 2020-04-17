---
title: Consumer Data Standards - v1.3.0 Release Notes

#language_tabs: # must be one of https://git.io/vQNgJ

toc_footers:
  - <a href='../../index.html'>Consumer Data Standards</a>

search: false
---

# V1.3.0 Release Notes
Release notes for version 1.3.0 of the [CDR Standards](../../index.html).

## High Level Standards
|Change|Description|Link|
|------|-----------|----|
|xxxx|XXXXX|[Introduction](../../index.html#introduction)|

## API End Points
|Change|Description|Link|
|------|-----------|----|
|xxxx|XXXXX|[Introduction](../../index.html#introduction)|


## Information Security Profile
|Change|Description|Link|
|------|-----------|----|
|xxxx|XXXXX|[Introduction](../../index.html#introduction)|

## Consumer Experience
|Change|Description|Link|
|------|-----------|----|
|Optional example for *‘Transaction Details’* amended|CX Standards defect. An optional example for *‘Transaction Details’* incorrectly referred to *‘BSB, account number’*. This optional example has been removed.|[CX Standards](../../index.html#consumer-experience) p.14|
|Use of ‘One Time Password’|CX Standards clarification. Amended to clarify that the use of the term “One Time Password” may be presented alongside an existing term used by a data holder (e.g. Netcode, one time pin etc.).|[CX Standards](../../index.html#consumer-experience) p.16|
|Unavailable accounts in the authorisation flow|CX Standards clarification. This clarification has been added to the standard as follows:<br/><br/>*Data holders are not permitted to show unavailable joint accounts as joint accounts need to be elected via a joint account management service before they are permitted to appear in the authorisation flow (See CDR Rules: Schedule 3, 4.1(1); 4.2; 4.3(3); and CDR Rule 4.24)*|[CX Standards](../../index.html#consumer-experience) p.16|
|Profile selection step|CX Standards, optional addition. To avoid DH non-compliance this guideline has been added as an optional part of an existing CX standard on account selection as follows:<br/><br/>*Data holders MAY add a ‘profile selection’ step or equivalent prior to the account selection step if a single identifier provides access to different customer accounts. For example, one customer ID may give access to business customer and individual customer accounts.<br/><br/>The ‘profile selection’ step* ***SHOULD*** *only be considered if it is an existing customer experience, and* ***SHOULD*** *be as minimal as possible to avoid introducing unwarranted friction (having regard to CDR Rule 4.24).*<br/><br/>This item was previously a guideline but was uplifted to be an optional part of the standards as it is not permitted in the authorisation flow unless it is a rule or standard.|[CX Standards](../../index.html#consumer-experience) p.16|
|CX Principles|The CX Guidelines and CX Standards artefacts now include the CX Principles and Outcome Principle 3.<br/>These principles guide standard/guideline development but are not standards themselves.|General|
|ABS hyperlink corrected|Broken link replaced|[CX Guidelines](../../index.html#consumer-experience) p.24|
|Concurrent consent|CX Guideline amended to avoid implying that concurrent consent will support re-authorisation.<br/>Guideline amended to clarify that consumer withdrawal must occur before/in the course of replacing an existing consent.|[CX Guidelines](../../index.html#consumer-experience) p.65<br/>(Added to key decisions table p.3)|
|CDR Logo in authorisation flow|CX Guideline has been removed pending the ACCC making this functionality available.|[CX Guidelines](../../index.html#consumer-experience) p.79|
|Accreditation ID in authorisation flow|CX Guideline has been removed pending the ACCC making this functionality available. ACCC is consulting on the sharing of the accreditation ID with DHs on [GitHub](https://github.com/cdr-register/register/issues/94)|[CX Guidelines](../../index.html#consumer-experience) p.79|
|Historical data|Screen example changed to ‘may date back to 1st January 2017’ as DH won’t know this detail.|[CX Guidelines](../../index.html#consumer-experience) p.83|
|User-defined tags|ADR guideline refers to ‘absence of information about the purpose or use case’. This has been removed as this only relates to DHs|[CX Guidelines](../../index.html#consumer-experience) p.93, 95|
|Status of consent/sharing|Guideline changed to clarify nuance of ‘status’ referring to both consent or data sharing|[CX Guidelines](../../index.html#consumer-experience) p.95, 108|