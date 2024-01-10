use utf8;

package SemanticWeb::Schema::replacee;

# ABSTRACT: A sub property of object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'replacee';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A sub property of object. The object that is being replaced.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
