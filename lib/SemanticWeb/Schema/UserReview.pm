use utf8;

package SemanticWeb::Schema::UserReview;

# ABSTRACT: A review created by an end-user (e

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'UserReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A review created by an end-user (e.g. consumer, purchaser, attendee
etc.), in contrast with <a class="localLink"
href="http://schema.org/CriticReview">CriticReview</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
