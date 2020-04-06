use utf8;

package SemanticWeb::Schema::EmployerReview;

# ABSTRACT: An EmployerReview is a review of an Organization regarding its role as an employer

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'EmployerReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An <a class="localLink"
href="http://schema.org/EmployerReview">EmployerReview</a> is a review of
an <a class="localLink"
href="http://schema.org/Organization">Organization</a> regarding its role
as an employer, written by a current or former employee of that
organization.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
