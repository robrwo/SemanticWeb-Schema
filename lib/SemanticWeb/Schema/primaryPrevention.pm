use utf8;

package SemanticWeb::Schema::primaryPrevention;

# ABSTRACT: A preventative therapy used to prevent an initial occurrence of the medical condition

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'primaryPrevention';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A preventative therapy used to prevent an initial occurrence of the medical
condition, such as vaccination.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
