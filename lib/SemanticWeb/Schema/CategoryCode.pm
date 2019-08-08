use utf8;

package SemanticWeb::Schema::CategoryCode;

# ABSTRACT: A Category Code.

use Moo;

extends qw/ SemanticWeb::Schema::DefinedTerm /;


use MooX::JSON_LD 'CategoryCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A Category Code.




=head1 ATTRIBUTES


=head2 C<code_value>

C<codeValue>

A short textual code that uniquely identifies the value.


A code_value should be one of the following types:

=over

=item C<Str>

=back

=cut

has code_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'codeValue',
);


=head2 C<in_code_set>

C<inCodeSet>

=begin html

A <a class="localLink"
href="http://schema.org/CategoryCodeSet">CategoryCodeSet</a> that contains
this category code.

=end html


A in_code_set should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCodeSet']>

=item C<Str>

=back

=cut

has in_code_set => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inCodeSet',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::DefinedTerm>

=cut

1;
