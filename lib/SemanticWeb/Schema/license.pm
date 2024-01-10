use utf8;

package SemanticWeb::Schema::license;

# ABSTRACT: A license document that applies to this content

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'license';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A license document that applies to this content, typically indicated by
URL.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
