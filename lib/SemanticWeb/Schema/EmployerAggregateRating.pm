use utf8;

package SemanticWeb::Schema::EmployerAggregateRating;

# ABSTRACT: An aggregate rating of an Organization related to its role as an employer.

use Moo;

extends qw/ SemanticWeb::Schema::AggregateRating /;


use MooX::JSON_LD 'EmployerAggregateRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

An aggregate rating of an Organization related to its role as an employer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AggregateRating>

=cut

1;
