use utf8;

package SemanticWeb::Schema::ClaimReview;

# ABSTRACT: A fact-checking review of claims made (or reported) in some creative work (referenced via itemReviewed).

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'ClaimReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A fact-checking review of claims made (or reported) in some creative work
(referenced via itemReviewed).




=head1 ATTRIBUTES


=head2 C<claim_reviewed>

C<claimReviewed>

A short summary of the specific claims reviewed in a ClaimReview.


A claim_reviewed should be one of the following types:

=over

=item C<Str>

=back

=cut

has claim_reviewed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'claimReviewed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
