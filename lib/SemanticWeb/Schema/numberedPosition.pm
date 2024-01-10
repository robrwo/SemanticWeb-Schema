use utf8;

package SemanticWeb::Schema::numberedPosition;

# ABSTRACT: A number associated with a role in an organization

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberedPosition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A number associated with a role in an organization, for example, the number
on an athlete's jersey.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
