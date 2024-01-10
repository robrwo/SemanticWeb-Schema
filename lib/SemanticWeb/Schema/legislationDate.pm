use utf8;

package SemanticWeb::Schema::legislationDate;

# ABSTRACT: The date of adoption or signature of the legislation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date of adoption or signature of the legislation. This is the date at
which the text is officially aknowledged to be a legislation, even though
it might not even be published or in force.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
