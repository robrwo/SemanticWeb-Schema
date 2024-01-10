use utf8;

package SemanticWeb::Schema::significance;

# ABSTRACT: The significance associated with the superficial anatomy; as an example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'significance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The significance associated with the superficial anatomy; as an example,
how characteristics of the superficial anatomy can suggest underlying
medical conditions or courses of treatment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
