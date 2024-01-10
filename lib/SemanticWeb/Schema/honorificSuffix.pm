use utf8;

package SemanticWeb::Schema::honorificSuffix;

# ABSTRACT: An honorific suffix following a Person's name such as M

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'honorificSuffix';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An honorific suffix following a Person's name such as M.D./PhD/MSCSW.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
