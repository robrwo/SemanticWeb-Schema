use utf8;

package SemanticWeb::Schema::UserReview;

# ABSTRACT: A review created by an end-user (e

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'UserReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

A review created by an end-user (e.g. consumer, purchaser, attendee etc.), in contrast with L<SemanticWeb::Schema::CriticReview>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
